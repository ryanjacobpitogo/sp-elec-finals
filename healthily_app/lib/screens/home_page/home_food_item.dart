import 'package:flutter/material.dart';

import '../diet_details_page/diet_details_screen.dart';

class FoodItem extends StatefulWidget {
  const FoodItem(
      {super.key,
      required this.label,
      required this.image,
      required this.name,
      required this.width,
      required this.height});

  final AssetImage image;
  final String label;
  final String name;
  final double width;
  final double height;

  @override
  State<FoodItem> createState() => _FoodItem();
}

class _FoodItem extends State<FoodItem> {
  List<Map<String, dynamic>> filteredRes = [];
  List<Map<String, dynamic>> filteredRec = [];
  List<Map<String, dynamic>> filterCat = [];

  void filter(value) {
    List<Map<String, dynamic>> res = [];
    List<Map<String, dynamic>> recipe = [];

    setState(() {
      res = filterRestaurants
          .where((element) => element['type'] == value)
          .toList();
      recipe =
          filterRecipes.where((element) => element['type'] == value).toList();

      filteredRes.addAll(res);
      filteredRes = filteredRes.toSet().toList();
      filteredRec.addAll(recipe);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
          child: Stack(
            children: [
              Container(
                width: widget.width,
                height: widget.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: widget.image, fit: BoxFit.cover),
                ),
              ),
              Positioned(
                  left: -40,
                  top: -10,
                  child: Image.asset(
                    "assets/bg-overlay.png",
                    width: 300,
                    height: 220,
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 120, 0, 5),
                child: Text(
                  widget.label,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          filteredFoods
              .map((e) => widget.label == e['type'] ? filter(e['name']) : null)
              .toList();

          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (context) => Res(filteredRes, filteredRec)));
        });
  }
}
