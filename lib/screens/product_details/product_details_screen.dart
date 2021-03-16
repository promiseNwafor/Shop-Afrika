import 'package:ShopAfrika/components/comps.dart';
import 'package:ShopAfrika/widgets/more_items.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  bool showSpec = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      bottomNavigationBar: _bottomNav(context),
      body: ListView(
        children: [
          Container(
            height: 300.0,
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            // child: productCarousel(context, img1, img2, img3),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                color: Colors.red[600],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 80,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "\u20A6${Comps.format(99.99)}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 34.0,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      "\u20A6100.00",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  alignment: Alignment.center,
                  height: 30.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    color: Colors.yellow,
                  ),
                  child: Text(
                    "-2%",
                    style: TextStyle(color: Colors.red[900], fontSize: 15.0),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Product description',
                      ),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                          size: 30.0,
                        ),
                        onPressed: () {}),
                  ],
                ),
                _stars(),
                Divider(
                  thickness: 1.5,
                ),
                Text(
                  "More Options",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                ),
                _moreOptions(),
                Divider(
                  thickness: 1.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Specifications",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w600),
                    ),
                    IconButton(
                        icon: Icon(Icons.arrow_drop_down_sharp),
                        onPressed: () {
                          setState(() {
                            showSpec = !showSpec;
                          });
                        })
                  ],
                ),

                showSpec
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Choose size",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Choose color",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.symmetric(
                          //       horizontal: 20.0, vertical: 20.0),
                          //   child: SizedBox(
                          //     height: 50,
                          //     child: SelectSizeWidget(),
                          //   ),
                          // ),
                        ],
                      )
                    : Text(''),
                // Divider(
                //   thickness: 1.5,
                // ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'More Fine Items',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          MoreItems(),
        ],
      ),
    );
  }

  Widget productCarousel(context, img1, img2, img3) {
    return Carousel(
      dotSize: 5.0,
      dotIncreaseSize: 1.5,
      dotSpacing: 12.0,
      dotColor: Colors.red[300],
      indicatorBgPadding: 5.0,
      dotBgColor: Colors.grey[200],
      dotIncreasedColor: Colors.red[400],
      images: [
        Image.network("https://shopafrika.net/dashboard/uploads/$img1",
            fit: BoxFit.cover),
        Image.network("https://shopafrika.net/dashboard/uploads/$img2",
            fit: BoxFit.cover),
        Image.network("https://shopafrika.net/dashboard/uploads/$img3",
            fit: BoxFit.cover),
      ],
    );
  }

  Widget _stars() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 25.0,
          child: IconButton(
              icon: Icon(
                Icons.star,
                color: Colors.yellow,
                size: 25.0,
              ),
              onPressed: () {}),
        ),
        SizedBox(
          width: 25.0,
          child: IconButton(
              icon: Icon(
                Icons.star,
                color: Colors.yellow,
                size: 25.0,
              ),
              onPressed: () {}),
        ),
        SizedBox(
          width: 25.0,
          child: IconButton(
              icon: Icon(
                Icons.star,
                color: Colors.yellow,
                size: 25.0,
              ),
              onPressed: () {}),
        ),
        SizedBox(
          width: 35.0,
          child: IconButton(
              icon: Icon(
                Icons.star,
                color: Colors.yellow,
                size: 25.0,
              ),
              onPressed: () {}),
        ),
        Text(
          "4.5 | 1900 orders",
          style: TextStyle(color: Colors.grey[500], fontSize: 12.0),
        ),
      ],
    );
  }

  Widget _moreOptions() {
    return SizedBox(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.all(7.0),
            height: 90.0,
            width: 90.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/canvas.jpeg'),
              ),
              // borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.all(7.0),
            height: 90.0,
            width: 90.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/canvas.jpeg'),
              ),
              // borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.all(7.0),
            height: 90.0,
            width: 90.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/canvas.jpeg'),
              ),
              // borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.all(7.0),
            height: 90.0,
            width: 90.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/canvas.jpeg'),
              ),
              // borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.all(7.0),
            height: 90.0,
            width: 90.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/canvas.jpeg'),
              ),
              // borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _appBar(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      // automaticallyImplyLeading: false,
      title: Container(
        // padding: EdgeInsets.only(right: 10.0),
        alignment: Alignment(0.5, 0.0),
        width: MediaQuery.of(context).size.width / 1.06,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
        ),
        height: 35.0,
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[100],
            hintText: 'Shoes',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 10.0),
            suffixIcon: Container(
              width: 50.0,
              // alignment: Alignment.topCenter,
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(55.0)),
                color: Colors.red,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 18.0,
                ),
                onPressed: () {},
              ),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[600]),
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
          ),
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.grey[800],
      actions: <Widget>[
        Container(
          alignment: Alignment.center,
          // width: 40.0,
          child: Padding(
            padding: const EdgeInsets.only(right: 0.0),
            child: Stack(
              children: [
                IconButton(
                  icon: Icon(Icons.shopping_cart, color: Colors.grey[200]),
                  onPressed: () async {},
                ),
                Positioned(
                  right: 9,
                  top: 5,
                  child: new Container(
                    padding: EdgeInsets.all(2),
                    decoration: new BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 14,
                      minHeight: 14,
                    ),
                    child: Text(
                      '0',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 7,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // IconButton(
        //   icon: Icon(Icons.forward, color: Colors.grey[600]),
        //   onPressed: () {},
        // ),
        Container(
          alignment: Alignment.center,
          // width: 20.0,
          // child: IconButton(
          //   icon: Icon(Icons.more_vert, color: Colors.grey[200]),
          //   onPressed: () {},
          // ),
          // child: Column(
          //   children: <Widget>[
          //     PopupMenuButton<String>(
          //       onSelected: choiceAction,
          //       itemBuilder: (BuildContext context) {
          //         return Menu.menu.map((String choice) {
          //           return PopupMenuItem<String>(
          //             value: choice,
          //             child: Text(choice),
          //           );
          //         }).toList();
          //       },
          //     )
          //   ],
          // ),
        ),
      ],
    );
  }

  Widget _bottomNav(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50.0,
          width: MediaQuery.of(context).size.width / 4,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                right: BorderSide(
              color: Colors.grey[300],
              width: 0.5,
            )),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.store,
                size: 20.0,
                // color: Colors.red,
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                'STORE',
                style: TextStyle(
                  // color: Colors.red,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 50.0,
          width: MediaQuery.of(context).size.width / 4,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                right: BorderSide(
              color: Colors.grey[300],
              width: 0.5,
            )),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.message,
                size: 20.0,
                // color: Colors.red,
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                'CHAT',
                style: TextStyle(
                  // color: Colors.red,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () async {
            // ========= Logic to post cart item only if user is logged in ===========
          },
          child: Container(
            alignment: Alignment.center,
            height: 50.0,
            width: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
              color: Colors.yellow,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_cart,
                  size: 20.0,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'ADD TO CART',
                  style: TextStyle(
                      // color: Colors.black,
                      fontSize: 11.0,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
