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
      body: SingleChildScrollView(
        child: Container(
          decoration: scaffoldBackground,
          child: Column(children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: ListTile(
                horizontalTitleGap: 0,
                tileColor: Colors.transparent,
                title: Container(
                  alignment: Alignment.center,
                  height: 150,
                  width: 50,
                  child: Image.asset(
                    widget.flag == 1
                        ? "assets/restaurantIcon.png"
                        : "assets/recipeIcon.png",
                  ),
                ),
                leading: IconButton(
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
                        : "assets/rButton2.png",)
                      ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 1145),
                  margin: const EdgeInsets.only(top: 65),
                  decoration: boxDecorContainer,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 50, 0, 10),
                          child: Text(
                            widget.flag == 0
                                ? "Recipe Suggestions"
                                : "Restaurant Suggestions",
                            style: const TextStyle(fontSize: 17),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
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
                        )
                      ],
                    ),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
