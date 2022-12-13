import 'package:flutter/material.dart';

import '../diet_details_page/diet_details_screen.dart';
import 'home_food_item.dart';

class FoodList extends StatelessWidget {
  const FoodList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: filterFoodscategory
            .map(
              (element) => FoodItem(
                label: element['type'],
                image: element['image'],
                name: element['name'],
                width: 200,
                height: 150,
              ),
            )
            .toList(),
      ),
    );
  }
}