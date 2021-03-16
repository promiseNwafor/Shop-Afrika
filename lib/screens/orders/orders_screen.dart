import 'package:ShopAfrika/screens/orders/all_orders.dart';
import 'package:ShopAfrika/screens/orders/delivered.dart';
import 'package:ShopAfrika/screens/orders/on_the_way.dart';
import 'package:ShopAfrika/screens/orders/unpaid.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.grey[800],
          ),
          // automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.white70,
          title: Padding(
            padding: EdgeInsets.only(
              right: 10.0,
            ),
            child: Text(
              'Orders',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey[900],
              ),
            ),
          ),
          bottom: TabBar(
              indicatorPadding: EdgeInsets.all(10),
              labelPadding: EdgeInsets.symmetric(horizontal: 0),
              unselectedLabelColor: const Color(0xffe61d1d),
              labelColor: Colors.white,
              isScrollable: true,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white70),
                  color: const Color(0xffe61d1d)),
              tabs: [
                Tab(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: const Color(0xffe61d1d), width: 2)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("All"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: const Color(0xffe61d1d), width: 2)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("On the way"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: const Color(0xffe61d1d), width: 2)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Delivered"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: const Color(0xffe61d1d), width: 2)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Unpaid"),
                    ),
                  ),
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            AllOrders(),
            OnTheWay(),
            Delivered(),
            Unpaid(),
          ],
        ),
      ),
    );
  }
}
