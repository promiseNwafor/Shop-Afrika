import 'package:ShopAfrika/screens/cart/cart_products.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    // var store = Provider.of<CartHttpService>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.grey[300],
        title: Padding(
          padding: EdgeInsets.only(
            right: 10.0,
          ),
          child: Row(
            children: [
              Text(
                'Cart(0)',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[900],
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 10.0,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  child: Text(
                    "	\u20A6100",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/checkout');
              },
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 18,
                width: MediaQuery.of(context).size.width / 2.3,
                decoration: new BoxDecoration(
                  color: const Color(0xffe61d1d),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "CHECK OUT",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
      body: CartProducts(),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
