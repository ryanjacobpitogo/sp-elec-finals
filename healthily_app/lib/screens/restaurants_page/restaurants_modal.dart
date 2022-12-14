// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:healthily_app/components/logo.dart';
import 'package:healthily_app/components/singular_botm_nav.dart';
import 'package:healthily_app/constants.dart';

class Resview extends StatefulWidget {
  const Resview(
      {super.key,
      required this.label,
      required this.image,
      required this.name});

  final NetworkImage image;
  final String label;
  final String name;
  @override
  State<Resview> createState() => Restaurantview();
}

class Restaurantview extends State<Resview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: widget.image, fit: BoxFit.cover),
          ),
          child: Center(
            child: SingleChildScrollView(
                child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(
                      Icons.keyboard_arrow_left_rounded,
                      color: Color.fromARGB(255, 218, 218, 218),
                      size: 50,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                // const SizedBox(height: 20),

                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 80.0),
                      child: Container(
                          constraints: const BoxConstraints(
                            minHeight: 500,
                          ),
                          width: double.infinity,
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                          margin: const EdgeInsets.only(top: 20),
                          decoration: boxDecorContainer,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20, right: 12),
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          top: 5,
                                          bottom: 5,
                                          left: 15,
                                          right: 15),
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 226, 68, 57),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Text(
                                        '+ Save',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(8, 25, 0, 10),
                                child: Text(
                                  widget.label,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                child: Text(widget.name),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Column(
                                    children: [
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("Average Rating:"),
                                            IconButton(
                                              constraints:
                                                  BoxConstraints(maxWidth: 20),
                                              onPressed: () {},
                                              icon: Icon(Icons.star),
                                              iconSize: 20,
                                              color: Colors.yellow,
                                            ),
                                            IconButton(
                                              constraints:
                                                  BoxConstraints(maxWidth: 20),
                                              onPressed: () {},
                                              icon: Icon(Icons.star),
                                              iconSize: 20,
                                              color: Colors.yellow,
                                            ),
                                            IconButton(
                                              constraints:
                                                  BoxConstraints(maxWidth: 20),
                                              onPressed: () {},
                                              icon: Icon(Icons.star),
                                              iconSize: 20,
                                              color: Colors.yellow,
                                            ),
                                            IconButton(
                                              constraints:
                                                  BoxConstraints(maxWidth: 20),
                                              onPressed: () {},
                                              icon: Icon(Icons.star_half),
                                              iconSize: 20,
                                              color: Colors.yellow,
                                            ),
                                            IconButton(
                                              constraints:
                                                  BoxConstraints(maxWidth: 20),
                                              onPressed: () {},
                                              icon: Icon(
                                                  Icons.star_border_outlined),
                                              iconSize: 20,
                                              color: Colors.yellow,
                                            ),
                                          ]),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            children: [
                                              ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          300),
                                                  child: Image.asset(
                                                      "assets/FL_burger.jpg",
                                                      width: 100)),
                                              SizedBox(height: 10),
                                              Row(children: [
                                                Text("Ryan Burger")
                                              ]),
                                              SizedBox(height: 5),
                                              Row(
                                                children: [
                                                  Container(
                                                    color: Color.fromARGB(
                                                        255, 209, 209, 209),
                                                    width: 25,
                                                    child: Center(
                                                        child: Text("-",
                                                            style: TextStyle(
                                                                fontSize: 20))),
                                                  ),
                                                  Container(
                                                    color: Color.fromARGB(
                                                        255, 226, 68, 57),
                                                    width: 25,
                                                    height: 22,
                                                    child: Center(
                                                        child: Text("1",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15))),
                                                  ),
                                                  Container(
                                                    color: Color.fromARGB(
                                                        255, 209, 209, 209),
                                                    width: 25,
                                                    child: Center(
                                                        child: Text("+",
                                                            style: TextStyle(
                                                                fontSize: 20))),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 40),
                                          Column(
                                            children: [
                                              ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          300),
                                                  child: Image.asset(
                                                      "assets/FL_burger.jpg",
                                                      width: 100)),
                                              SizedBox(height: 10),
                                              Row(children: [
                                                Text("Siarot Burger")
                                              ]),
                                              SizedBox(height: 5),
                                              Row(
                                                children: [
                                                  Container(
                                                    color: Color.fromARGB(
                                                        255, 209, 209, 209),
                                                    width: 25,
                                                    child: Center(
                                                        child: Text("-",
                                                            style: TextStyle(
                                                                fontSize: 20))),
                                                  ),
                                                  Container(
                                                    color: Color.fromARGB(
                                                        255, 226, 68, 57),
                                                    width: 25,
                                                    height: 22,
                                                    child: Center(
                                                        child: Text("1",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15))),
                                                  ),
                                                  Container(
                                                    color: Color.fromARGB(
                                                        255, 209, 209, 209),
                                                    width: 25,
                                                    child: Center(
                                                        child: Text("+",
                                                            style: TextStyle(
                                                                fontSize: 20))),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 40),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            children: [
                                              ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          300),
                                                  child: Image.asset(
                                                      "assets/FL_burger.jpg",
                                                      width: 100)),
                                              SizedBox(height: 10),
                                              Row(children: [
                                                Text("Sasing Burger")
                                              ]),
                                              SizedBox(height: 5),
                                              Row(
                                                children: [
                                                  Container(
                                                    color: Color.fromARGB(
                                                        255, 209, 209, 209),
                                                    width: 25,
                                                    child: Center(
                                                        child: Text("-",
                                                            style: TextStyle(
                                                                fontSize: 20))),
                                                  ),
                                                  Container(
                                                    color: Color.fromARGB(
                                                        255, 226, 68, 57),
                                                    width: 25,
                                                    height: 22,
                                                    child: Center(
                                                        child: Text("1",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15))),
                                                  ),
                                                  Container(
                                                    color: Color.fromARGB(
                                                        255, 209, 209, 209),
                                                    width: 25,
                                                    child: Center(
                                                        child: Text("+",
                                                            style: TextStyle(
                                                                fontSize: 20))),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 40),
                                          Column(
                                            children: [
                                              ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          300),
                                                  child: Image.asset(
                                                      "assets/FL_burger.jpg",
                                                      width: 100)),
                                              SizedBox(height: 10),
                                              Row(children: [
                                                Text("Mega Burger")
                                              ]),
                                              SizedBox(height: 5),
                                              Row(
                                                children: [
                                                  Container(
                                                    color: Color.fromARGB(
                                                        255, 209, 209, 209),
                                                    width: 25,
                                                    child: Center(
                                                        child: Text("-",
                                                            style: TextStyle(
                                                                fontSize: 20))),
                                                  ),
                                                  Container(
                                                    color: Color.fromARGB(
                                                        255, 226, 68, 57),
                                                    width: 25,
                                                    height: 22,
                                                    child: Center(
                                                        child: Text("1",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15))),
                                                  ),
                                                  Container(
                                                    color: Color.fromARGB(
                                                        255, 209, 209, 209),
                                                    width: 25,
                                                    child: Center(
                                                        child: Text("+",
                                                            style: TextStyle(
                                                                fontSize: 20))),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 40),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            children: [
                                              ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          300),
                                                  child: Image.asset(
                                                      "assets/FL_burger.jpg",
                                                      width: 100)),
                                              SizedBox(height: 10),
                                              Row(children: [
                                                Text("Supreme Burger")
                                              ]),
                                              SizedBox(height: 5),
                                              Row(
                                                children: [
                                                  Container(
                                                    color: Color.fromARGB(
                                                        255, 209, 209, 209),
                                                    width: 25,
                                                    child: Center(
                                                        child: Text("-",
                                                            style: TextStyle(
                                                                fontSize: 20))),
                                                  ),
                                                  Container(
                                                    color: Color.fromARGB(
                                                        255, 226, 68, 57),
                                                    width: 25,
                                                    height: 22,
                                                    child: Center(
                                                        child: Text("1",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15))),
                                                  ),
                                                  Container(
                                                    color: Color.fromARGB(
                                                        255, 209, 209, 209),
                                                    width: 25,
                                                    child: Center(
                                                        child: Text("+",
                                                            style: TextStyle(
                                                                fontSize: 20))),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 40),
                                          Column(
                                            children: [
                                              ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          300),
                                                  child: Image.asset(
                                                      "assets/FL_burger.jpg",
                                                      width: 100)),
                                              SizedBox(height: 10),
                                              Row(children: [
                                                Text("Ultra Burger")
                                              ]),
                                              SizedBox(height: 5),
                                              Row(
                                                children: [
                                                  Container(
                                                    color: Color.fromARGB(
                                                        255, 209, 209, 209),
                                                    width: 25,
                                                    child: Center(
                                                        child: Text("-",
                                                            style: TextStyle(
                                                                fontSize: 20))),
                                                  ),
                                                  Container(
                                                    color: Color.fromARGB(
                                                        255, 226, 68, 57),
                                                    width: 25,
                                                    height: 22,
                                                    child: Center(
                                                        child: Text("1",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15))),
                                                  ),
                                                  Container(
                                                    color: Color.fromARGB(
                                                        255, 209, 209, 209),
                                                    width: 25,
                                                    child: Center(
                                                        child: Text("+",
                                                            style: TextStyle(
                                                                fontSize: 20))),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  )),
                            ],
                          )),
                    ),
                    Positioned(
                      top: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(300),
                        child: Image(
                          image: widget.image,
                          width: 140,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )),
          ),
        ),
      ),
      bottomNavigationBar: SingularBottomNavigation(
          text: 'ORDER FROM FOODPANDA', onPress: () {}),
    );
  }
}
