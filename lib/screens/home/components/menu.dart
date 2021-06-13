import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int activeIndex = 0;

  _onIndexChange(int index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MenuText(text: 'Food', isActive: activeIndex == 0, index: 0, press: _onIndexChange),
          MenuText(text: 'Market', isActive: activeIndex == 1, index: 1, press: _onIndexChange),
          MenuText(text: 'Delivery', isActive: activeIndex == 2, index: 2, press: _onIndexChange),
        ],
      ),
    );
  }
}

class MenuText extends StatelessWidget {
  final bool isActive;
  final String text;
  final int index;
  final Function press;

  const MenuText({
    Key? key,
    required this.isActive,
    required this.text,
    required this.index,
    required this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      height: 38,
      child: Stack(
          children: [
            GestureDetector(
              onTap: () => press(index),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: isActive ? Colors.black : Colors.grey.shade400
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 10,
              right: 10,
              child: Container(
                height: isActive ? 6 : 0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.redAccent
                ),
              ),
            )
          ]
      ),
    );
  }
}