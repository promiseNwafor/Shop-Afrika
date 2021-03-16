import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        // automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.grey[300],
        title: Padding(
          padding: EdgeInsets.only(
            right: 10.0,
          ),
          child: Row(
            children: [
              Text(
                'Checkout',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[900],
                  fontSize: 25.0,
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
        padding: EdgeInsets.only(top: 10.0, left: 10.0),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(width: 50.0, child: Text("Total:")),
                Container(
                  // width: 110.0,
                  child: Text(
                    "\u20A61000",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width / 2.5,
              child: MaterialButton(
                elevation: 0,
                onPressed: () {},
                child: Text(
                  "PAY",
                  style: TextStyle(
                      color: Colors.grey[100], fontWeight: FontWeight.w700),
                ),
                color: Colors.red[700],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: 20.0, right: 20.0, bottom: 20.0, top: 10.0),
              // height: 200.0,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.all(Radius.circular(5.0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[100].withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 1,
                      offset: Offset(0, 1)),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "YOUR DETAILS",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.grey),
                      ),
                      // IconButton(
                      //   onPressed: () {},
                      //   icon: Icon(
                      //     Icons.edit,
                      //     size: 20.0,
                      //     color: Colors.grey,
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                            color:
                                Theme.of(context).hintColor.withOpacity(0.15),
                            offset: Offset(0, 3),
                            blurRadius: 10)
                      ],
                    ),
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      primary: false,
                      children: <Widget>[
                        ListTile(
                          onTap: () {},
                          dense: true,
                          title: Text(
                            'Name',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.black),
                          ),
                          trailing: Text(
                            "Username",
                            style:
                                TextStyle(color: Theme.of(context).focusColor),
                          ),
                        ),
                        ListTile(
                          onTap: () {},
                          dense: true,
                          title: Text(
                            'Email',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                        ListTile(
                          onTap: () {},
                          dense: true,
                          title: Text(
                            'Phone',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                        ListTile(
                          onTap: () {},
                          dense: true,
                          title: Text(
                            'Shipping Address',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "ORDER ITEMS",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ),
            ),
            // Container(
            //   // height: 500.0,
            //   padding: const EdgeInsets.all(10.0),
            //   color: Colors.grey[300],
            //   child: ListView.builder(
            //       physics: NeverScrollableScrollPhysics(),
            //       shrinkWrap: true,
            //       itemCount: 3,
            //       itemBuilder: (context, i) {
            //         // return Text("${store.cartItem[i].title}");
            //         return Container(
            //           // width: 450.0,
            //           margin:
            //               EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
            //           decoration: BoxDecoration(
            //             color: Colors.white,
            //           ),
            //           child: Container(
            //               height: 125.0,
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 crossAxisAlignment: CrossAxisAlignment.end,
            //                 children: [
            //                   Container(
            //                     margin: EdgeInsets.only(left: 0.0),
            //                     decoration: BoxDecoration(
            //                       image: DecorationImage(
            //                         image: NetworkImage(
            //                           'https://shopafrika.net/dashboard/uploads/${tasks[i].image1}',
            //                         ),
            //                         fit: BoxFit.cover,
            //                       ),
            //                     ),
            //                     width: 120.0,
            //                   ),
            //                   Container(
            //                     padding: EdgeInsets.only(
            //                       top: 10.0,
            //                     ),
            //                     child: Column(
            //                       crossAxisAlignment: CrossAxisAlignment.center,
            //                       mainAxisAlignment:
            //                           MainAxisAlignment.spaceAround,
            //                       children: [
            //                         Text(
            //                           "${tasks[i].name}",
            //                           style: TextStyle(
            //                             fontWeight: FontWeight.w500,
            //                           ),
            //                         ),
            //                         // Column(
            //                         //   mainAxisAlignment: MainAxisAlignment.end,
            //                         //   crossAxisAlignment: CrossAxisAlignment.center,
            //                         //   children: <Widget>[
            //                         Padding(
            //                           padding: const EdgeInsets.all(4.0),
            //                           child: Text(
            //                             "Size",
            //                             // tasks[i].size != null ||
            //                             //         tasks[i].size != 0
            //                             //     ? "Size ${tasks[i].size}"
            //                             //     : "",
            //                             style: TextStyle(
            //                               color: Colors.red,
            //                               fontSize: 11.0,
            //                             ),
            //                           ),
            //                         ),
            //                         Padding(
            //                           padding: const EdgeInsets.all(4.0),
            //                           child: Text(
            //                             tasks[i].color != null ||
            //                                     tasks[i].color != ""
            //                                 ? "${tasks[i].color}"
            //                                 : "",
            //                             style: TextStyle(
            //                               color: Colors.red,
            //                               fontSize: 11.0,
            //                             ),
            //                           ),
            //                         ),
            //                         Container(
            //                             alignment: Alignment.center,
            //                             child: Text(
            //                               "\u20A6${FormatDigits.format(tasks[i].price)}",
            //                               style: TextStyle(
            //                                 fontSize: 15.0,
            //                                 fontWeight: FontWeight.w500,
            //                                 // color: Colors.red,
            //                               ),
            //                             )),
            //                         //   ],
            //                         // ),
            //                       ],
            //                     ),
            //                   ),
            //                   Column(
            //                     children: [
            //                       IconButton(
            //                           icon: Icon(
            //                             Icons.arrow_drop_up,
            //                           ),
            //                           onPressed: () {
            //                             setState(() {
            //                               qty = tasks[i].qty + 1;
            //                             });
            //                             dbHelper.updateDbQty(tasks[i], qty);
            //                             asyncMethod();
            //                           }),
            //                       Text(
            //                         "${tasks[i].qty}",
            //                         style: TextStyle(fontSize: 10.0),
            //                       ),
            //                       IconButton(
            //                           icon: Icon(
            //                             Icons.arrow_drop_down,
            //                           ),
            //                           onPressed: () {
            //                             // print(products.first);
            //                             setState(() {
            //                               qty = qty > 1 ? tasks[i].qty - 1 : 1;
            //                             });
            //                             dbHelper.updateDbQty(tasks[i], qty);
            //                             asyncMethod();
            //                             print(tasks[i].qty);
            //                             print(qty);
            //                           }),
            //                     ],
            //                   ),
            //                 ],
            //               )),
            //         );
            //       }),
            // ),
          ],
        ),
      ),
    );
  }
}
