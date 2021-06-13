import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Category',
            style: TextStyle(
              fontSize: 21.0,
              fontWeight: FontWeight.w900
            ),
          ),
         SizedBox(height: 10.0),
         Row(
           children: [
             CategoryCard(image: 'assets/images/burger.png', text: 'Burger', color: Colors.orangeAccent),
             CategoryCard(image: 'assets/images/popcorn.png', text: 'Popcorn', color: Colors.yellow),
             CategoryCard(image: 'assets/images/donut.png', text: 'Donut', color: Colors.brown.shade200),
             CategoryCard(image: 'assets/images/drink.png', text: 'Drink', color: Colors.redAccent.shade100),
           ],
         )
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String image, text;
  final int width;
  final Color color;

  const CategoryCard({
    Key? key,
    required this.image,
    required this.text,
    required this.color,
    this.width = 60
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => print('$text category clicked'),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 15
                )
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Image.asset(
                    image,
                    cacheWidth: width,
                    fit: BoxFit.contain,
                  )
                ),
                SizedBox(height: 10.0),
                Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.w900
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}