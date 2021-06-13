import 'package:flutter/material.dart';

class NumericUpDownInput extends StatelessWidget {
  final int value;
  final Function onIncrement, onDecrement;

  NumericUpDownInput({
    Key? key,
    required this.value,
    required this.onDecrement,
    required this.onIncrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(10.0)
          ),
          child: IconButton(
              onPressed: () => onDecrement(),
              icon: Icon(
                Icons.remove,
                color: Colors.grey,
              )
          ),
        ),
        SizedBox(width: 15.0),
        Text(
          value < 10
              ? '0' + value.toString()
              : value.toString(),
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(width: 15.0),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(10.0)
          ),
          child: IconButton(
              onPressed: () => onIncrement(),
              icon: Icon(
                Icons.add,
                color: Colors.white,
              )
          ),
        ),
      ],
    );
  }

}