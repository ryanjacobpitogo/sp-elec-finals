// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constants.dart';
import '../recipe_page/recipe_card.dart';
import 'restaurants_card.dart';

class Res extends StatefulWidget {
  Res(this.filteredRes, this.recipes, {super.key});

  List<Map<String, dynamic>> filteredRes;
  List<Map<String, dynamic>> recipes;
  int flag = 0;

  @override
  State<Res> createState() => _Res();
}

class _Res extends State<Res> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: scaffoldBackground,
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20),
              ListTile(
                horizontalTitleGap: 0,
                tileColor: Colors.transparent,
                title: Container(
                  alignment: Alignment.center,
                  height: 120,
                  width: 150,
                  child: Image.asset(
                    widget.flag == 1
                        ? "assets/restaurantIcon.png"
                        : "assets/recipeIcon.png",
                  ),
                ),
                leading: Column(
                  children: [
                    IconButton(
                      onPressed: (() {
                        setState(() {
                          widget.flag == 1
                              ? widget.flag = 0
                              : widget.flag = widget.flag;
                        });
                      }),
                      icon: Image.asset(
                        widget.flag == 1
                            ? "assets/rButton1.png"
                            : "assets/rButton3.png",
                      ),
                    ),
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: IconButton(
                      onPressed: (() {
                        setState(() {
                          widget.flag == 0
                              ? widget.flag = 1
                              : widget.flag = widget.flag;
                        });
                      }),
                      icon: Image.asset(
                        widget.flag == 1
                            ? "assets/rButton.png"
                            : "assets/rButton2.png",
                      )),
                ),
              ),
              Container(
                constraints: const BoxConstraints(
                  minHeight: 500,
                ),
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                margin: const EdgeInsets.only(top: 20),
                decoration: boxDecorContainer,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 12, 0, 2),
                      child: Text(
                        "Restaurants",
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    Column(children: [
                      Row(
                        children: [
                          IconButton(
                              icon: const Icon(Icons.search), onPressed: () {}),
                          Container(
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 10, right: 180),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text('Search...'),
                          ),
                        ],
                      ),
                    ]),
                    Row(
                      children: [
                        Container(
                          width: 292,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(children: [
                              Row(
                                children: [
                                  SizedBox(width: 20),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 5, left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 226, 68, 57),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Text(
                                      'Adobo',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(width: 3),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 5, left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 184, 184, 184),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Text('Pork Chop'),
                                  ),
                                  SizedBox(width: 3),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 5, left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 184, 184, 184),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Text('Grilled'),
                                  ),
                                  SizedBox(width: 3),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 5, left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 184, 184, 184),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Text('Soup'),
                                  ),
                                  SizedBox(width: 3),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 5, left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 184, 184, 184),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Text('Fillet'),
                                  ),
                                  SizedBox(width: 3),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 5, left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 184, 184, 184),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Text('Inasal'),
                                  ),
                                  SizedBox(width: 3),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 5, left: 10, right: 10),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 184, 184, 184),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Text('Seafood'),
                                  ),
                                ],
                              ),
                            ]),
                          ),
                        ),
                        IconButton(
                            onPressed: (() {}),
                            icon: Image.asset("assets/rButton.png"))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        widget.flag == 0
                            ? "Recipe Suggestions"
                            : "Restaurant Suggestions",
                        style: const TextStyle(fontSize: 17),
                      ),
                    ),
                    Column(
                      children: widget.flag == 1
                          ? widget.filteredRes
                              .map((element) => ResCard(
                                  label: element['name'],
                                  image: element['place'],
                                  name: element['location']))
                              .toList()
                          : widget.recipes
                              .map((element) => RecCard(
                                  label: element['name'],
                                  image: element['image'],
                                  name: element['auth']))
                              .toList(),
                    ),
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
