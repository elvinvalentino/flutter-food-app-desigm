import 'package:flutter/material.dart';
import 'package:submission/screens/home/components/category.dart';
import 'package:submission/screens/home/components/header.dart';
import 'package:submission/screens/home/components/headline.dart';
import 'package:submission/screens/home/components/menu.dart';
import 'package:submission/screens/home/components/popular.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Header(),
            SizedBox(height: 30.0),
            Headline(),
            SizedBox(height: 25.0),
            Menu(),
            SizedBox(height: 25.0),
            Category(),
            SizedBox(height: 25.0),
            Popular()
          ],
        ),
      ),
    );
  }
}