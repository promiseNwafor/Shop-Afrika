import 'package:flutter/material.dart';

class CouponsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Coupons'),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.grey[200],
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Icon(
              Icons.leave_bags_at_home,
              size: 180,
              color: Colors.grey[400],
            ),
            Text(
              "No coupon",
              style: TextStyle(color: Colors.grey[400], fontSize: 12.0),
            ),
          ],
        ),
      ),
    );
  }
}
