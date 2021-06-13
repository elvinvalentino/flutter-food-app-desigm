import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission/models/food.dart';

class Information extends StatelessWidget {
  final Food food;

  const Information({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Colors.grey,
          width: 0.5
        )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          InformationContent(value: '${food.energy} kcal', description: 'Energy'),
          VerticalDivider(
            width: 1.0,
            color: Colors.black,
            indent: 5.0,
            endIndent: 5.0,
          ),
          InformationContent(value: '${food.rating}', description: 'Rating'),
          VerticalDivider(
            width: 1.0,
            color: Colors.black,
            indent: 5.0,
            endIndent: 5.0,
          ),
          InformationContent(value: food.deliveryTime, description: 'Delivery Time'),
        ],
      ),
    );
  }
}

class InformationContent extends StatelessWidget {
  final String value, description;

  InformationContent({
    Key? key,
    required this.value,
    required this.description
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            value,
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w900
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            description,
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade400
            ),
          )
        ],
      ),
    );
  }
}