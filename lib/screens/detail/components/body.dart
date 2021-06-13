import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:submission/components/price_with_button.dart';
import 'package:submission/models/food.dart';
import 'package:submission/screens/detail/components/information.dart';
import 'package:submission/screens/detail/components/numeric_up_down_input.dart';

class Body extends StatefulWidget {
  final Food food;

  const Body({Key? key, required this.food}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int value = 1;

  _onIncrement() {
    if(value == 99) return;

    setState(() {
      value += 1;
    });
  }

  _onDecrement() {
    if(value == 1) return;

    setState(() {
      value -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.food.title,
                    style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.w900
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    widget.food.subtitle,
                    style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 35.0),
                  Center(child: Image.asset(widget.food.image)),
                  SizedBox(height: 35.0),
                  NumericUpDownInput(
                    value: value,
                    onDecrement: _onDecrement,
                    onIncrement: _onIncrement,
                  ),
                  SizedBox(height: 25.0),
                  ReadMoreText(
                    widget.food.description,
                    trimLines: 2,
                    colorClickableText: Colors.redAccent,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 25.0),
                  Information(food: widget.food),
                  SizedBox(height: 25.0),
                ],
              ),
            ),
          ),
        ),
        PriceWithButton(
          text: 'Total',
          price: widget.food.price * value,
          buttonText: 'Add to cart',
          onPress: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Food added to cart!'),
                duration: Duration(seconds: 1),
                backgroundColor: Colors.green.shade500,
              )
            );
          }
        )
      ],
    );
  }
}