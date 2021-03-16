import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10.0,
      ),
      color: Colors.grey[300],
      child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, i) {
            // return Text("${store.cartItem[i].title}");
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_cart,
                  size: 150,
                  color: Colors.grey[300],
                ),
                SizedBox(
                  height: 0.0,
                ),
                Text(
                  "No items in your cart",
                  style: TextStyle(color: Colors.grey[400], fontSize: 12.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 35.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: const Color(0xffe61d1d),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[500].withOpacity(0.3),
                        blurRadius: 20,
                        spreadRadius: 1,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: FlatButton(
                    child: Text(
                      'Continue Shopping',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/homePage');
                    },
                  ),
                ),
              ],
            ));
          }),
    );
  }
}
