import 'package:flutter/material.dart';
import 'package:submission/models/food.dart';
import 'package:submission/screens/detail/components/body.dart';

class DetailScreen extends StatelessWidget {
  final Food food;

  const DetailScreen({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.grey),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Body(food: food),
    ) ;
  }
}