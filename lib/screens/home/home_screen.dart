import 'package:ShopAfrika/screens/home/widgets/all_products.dart';
import 'package:ShopAfrika/screens/home/widgets/evening_market.dart';
import 'package:ShopAfrika/screens/home/widgets/featured.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: [const Color(0xffffed00), const Color(0xffe61d1d)],
          ),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)),
        ),
        child: Column(
          children: [
            Featured(),
            EveningMarket(),
            AllProducts(),
          ],
        ),
      ),
    );
  }
}
