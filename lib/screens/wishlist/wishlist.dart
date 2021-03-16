import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Wishlist'),
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
              "You have not added any item to your wishlist",
              style: TextStyle(color: Colors.grey[400], fontSize: 12.0),
            ),
          ],
        ),
      ),
    );
  }
}
