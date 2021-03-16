import 'package:ShopAfrika/screens/cart/widgets/props.dart';
import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(1.toString()),
      direction: DismissDirection.endToStart,
      onDismissed: (DismissDirection direction) async {},
      background: CartProps.refreshBg(),
      child: Container(
        // width: 450.0,
        padding: EdgeInsets.only(
          top: 5.0,
          bottom: 5.0,
        ),
        margin: EdgeInsets.symmetric(vertical: 3.0, horizontal: 5.0),
        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.circular(10),
        ),
        child: _buildColumn(context),
      ),
    );
  }

  Column _buildColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Text(
            "Shop Afrika",
            style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
            height: MediaQuery.of(context).size.height / 5.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    // image: DecorationImage(
                    // image: NetworkImage(
                    //   'https://shopafrika.net/dashboard/uploads/${widget.items[i].image1}',
                    // ),
                    // fit: BoxFit.cover,
                    // ),
                  ),
                  width: 170.0,
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 10.0,
                  ),
                  margin: EdgeInsets.only(
                    left: 30.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "name",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      // Column(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "Size",
                          style: TextStyle(
                            color: const Color(0xffe61d1d),
                            fontSize: 11.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "Color",
                          style: TextStyle(
                            color: const Color(0xffe61d1d),
                            fontSize: 11.0,
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            "	\u20A6120",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              // color: const Color(0xffe61d1d),
                            ),
                          )),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.grey,
                    ),
                    Text("Remove")
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Colors.red[700],
                      ),
                      onPressed: () {}),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 3.0, horizontal: 13.0),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.black)),
                    child: Text(
                      "3",
                      style: TextStyle(fontSize: 10.0),
                    ),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.remove,
                        color: Colors.red[700],
                      ),
                      onPressed: () {}),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
