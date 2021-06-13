import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission/models/food.dart';
import 'package:submission/screens/detail/detail_screen.dart';

class FoodCard extends StatelessWidget {
  final Food food;

  FoodCard({ Key? key, required this.food });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: GestureDetector(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(food: food))),
        child: Container(
          width: double.infinity,
          height: 200,
          child: Stack(
            children: <Widget>[
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 160,
                  padding: const EdgeInsets.all(25.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 0),
                            color: Colors.black.withOpacity(0.125),
                            blurRadius: 20
                        )
                      ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        food.title,
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w900
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        food.subtitle,
                        style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.grey.shade400
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: 170,
                  height: 160,
                  child: Image.asset(
                    food.image,
                    cacheWidth: 200,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                        )
                      ),
                      child: IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Food added to cart!'),
                              duration: Duration(seconds: 1),
                              backgroundColor: Colors.green.shade500,
                            )
                          );
                        },
                        color: Colors.white,
                        splashRadius: 10,
                      ),
                    ),
                    SizedBox(width: 30.0),
                    Text(
                      '\$${food.price}',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w900
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}