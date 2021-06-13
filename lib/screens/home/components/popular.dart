import 'package:flutter/material.dart';
import 'package:submission/components/food_card.dart';
import 'package:submission/models/food.dart';
import 'package:submission/screens/foods/foods_screen.dart';

class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular',
                style: TextStyle(
                    fontSize: 21.0,
                    fontWeight: FontWeight.w900
                ),
              ),
              TextButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FoodsScreen())),
                child: Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 15.0
                  ),
                )
              )
            ],
          ),
          FoodCard(food: foodList[0]),
          FoodCard(food: foodList[1]),
        ],
      ),
    );
  }
}

