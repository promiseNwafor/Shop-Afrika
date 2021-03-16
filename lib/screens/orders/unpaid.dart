import 'package:flutter/material.dart';

class Unpaid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.0,
        ),
        Icon(
          Icons.delivery_dining,
          size: 180,
          color: Colors.grey[400],
        ),
        Text(
          "No item",
          style: TextStyle(color: Colors.grey[400], fontSize: 12.0),
        ),
      ],
    );
  }
}
