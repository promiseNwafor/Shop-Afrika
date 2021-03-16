import 'package:flutter/material.dart';

class OnTheWay extends StatelessWidget {
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
          "No item on the way",
          style: TextStyle(color: Colors.grey[400], fontSize: 12.0),
        ),
      ],
    );
  }
}
