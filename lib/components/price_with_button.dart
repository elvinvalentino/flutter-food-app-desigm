import 'package:flutter/material.dart';

class PriceWithButton extends StatelessWidget {
  final String text, buttonText;
  final double price;
  final Function onPress;

  PriceWithButton({
    Key? key,
    required this.text,
    required this.price,
    required this.buttonText,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            color: Colors.redAccent.withOpacity(0.1),
            blurRadius: 25,
          )
        ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                text,
                style:  TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade400
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                '\$${price.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          SizedBox(width: 40.0),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: TextButton(
                onPressed: () => onPress(),
                child: Text(
                  buttonText,
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}