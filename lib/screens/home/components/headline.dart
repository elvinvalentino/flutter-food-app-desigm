import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome to',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            'VinFood',
            style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}