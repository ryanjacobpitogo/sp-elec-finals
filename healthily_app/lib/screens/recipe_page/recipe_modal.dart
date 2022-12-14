// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:healthily_app/components/logo.dart';
import 'package:healthily_app/constants.dart';

class Recview extends StatefulWidget {
  const Recview(
      {super.key,
      required this.label,
      required this.image,
      required this.name});

  final String image;
  final String label;
  final String name;
  @override
  State<Recview> createState() => Recipeview();
}

class Recipeview extends State<Recview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(widget.image), fit: BoxFit.fitHeight),
          ),
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
              const SizedBox(height: 150),
              Container(
                  constraints: const BoxConstraints(
                    minHeight: 500,
                  ),
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  margin: const EdgeInsets.only(top: 20),
                  decoration: boxDecorContainer,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 20, 0, 5),
                        child: Text(
                          widget.label,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 0, 0, 10),
                        child: Text(widget.name),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 15, right: 15),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 216, 252, 175),
                              border: Border.all(
                                  color: Color.fromARGB(255, 47, 146, 51),
                                  width: 1.5),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'Pork',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 15, right: 15),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 216, 252, 175),
                              border: Border.all(
                                  color: Color.fromARGB(255, 47, 146, 51),
                                  width: 1.5),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'Meat',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, left: 15, right: 15),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 226, 68, 57),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          '+ Save',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text("INGREDIENTS"
                            "\n\n2 tablespoons vegetable oil"
                            "\n 2 pounds pork shoulder (cut into chunks)"
                            "\n ¼ cup cane vinegar or white vinegar"
                            "\n⅓ cup low sodium soy sauce"
                            "\n6 cloves garlic (chopped)"
                            "\n1 bay leaf"
                            "\n2 teaspoons black peppercorns"
                            "\n2 teaspoons sugar"
                            "\n2 cups water"
                            "\n\n\nINSTRUCTIONS"
                            "\n\n1. In a medium dutch oven or pot over medium high heat, add the oil and sear the pork until browned on all sides."
                            "\n2. Add the vinegar, soy sauce, garlic, bay leaf, peppercorns (tied in cheese cloth if desired), sugar, and water, and bring to a boil. Reduce the heat to medium low, cover, and simmer for 1 hour."
                            "\n3. Remove the cover and continue simmering for another 30 minutes to reduce the sauce."
                            "\n4. Serve over rice!"
                            "\n\n\nNUTRITION FACTS"
                            "\n\nCalories: 196kcal (10%)"
                            " \nCarbohydrates: 4g (1%)"
                            " \nProtein: 19g (38%)"
                            " \nFat: 11g (17%)"
                            " \nSaturated Fat: 6g (30%) "
                            " \nCholesterol: 62mg (21%) "
                            " \nSodium: 547mg (23%)"
                            " \nPotassium: 352mg (10%)"
                            " \nFiber: 1g (4%)"
                            " \nSugar: 2g (2%)"
                            " \nVitamin C: 1.7mg (2%)"
                            " \nCalcium: 23mg (2%)"
                            " \nIron: 1.5mg (8%)"),
                      )
                    ],
                  ))
            ],
          )),
        ),
      ),
    );
  }
}
