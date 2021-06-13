import 'package:flutter/material.dart';
import 'package:submission/components/food_card.dart';
import 'package:submission/models/food.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Popular foods',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w900
              ),
            ),
            ...foodList.map((food) => FoodCard(food: food)).toList()
          ],
        ),
      ),
    );
  }
}