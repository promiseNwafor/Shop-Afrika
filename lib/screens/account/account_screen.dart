import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Account",
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.symmetric(),
                      child: IconButton(
                        icon: Icon(
                          Icons.settings,
                          size: 30.0,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/settings');
                        },
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[500],
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.grey[300],
                          size: 40.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                _listProps(),
                SizedBox(
                  height: 5.0,
                ),
                _orders(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _orderProps(String title, int count) {
    return ListTile(
      onTap: () {},
      dense: true,
      title: Text(
        title,
        style: TextStyle(fontSize: 15.0),
      ),
      trailing: Chip(
        padding: EdgeInsets.symmetric(horizontal: 10),
        backgroundColor: Colors.transparent,
        shape: StadiumBorder(
            side: BorderSide(color: Theme.of(context).focusColor)),
        label: Text(
          '$count',
          style: TextStyle(color: Theme.of(context).focusColor),
        ),
      ),
    );
  }

  Widget _orders() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      height: 250.0,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              color: Theme.of(context).hintColor.withOpacity(0.15),
              offset: Offset(0, 3),
              blurRadius: 10)
        ],
      ),
      child: ListView(
        shrinkWrap: true,
        primary: false,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text(
              'My Orders',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            trailing: ButtonTheme(
              padding: EdgeInsets.all(0),
              minWidth: 50.0,
              height: 25.0,
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/orders');
                },
                child: Text(
                  "View all",
                  style:
                      TextStyle(fontSize: 14.0, color: const Color(0xffe61d1d)),
                ),
              ),
            ),
          ),
          _orderProps('Unpaid', 0),
          _orderProps('On the way', 0),
          _orderProps('Delivered', 0),
        ],
      ),
    );
  }

  Widget _listProps() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0),
      padding: EdgeInsets.symmetric(vertical: 15),
      // height: 120.0,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              color: Theme.of(context).hintColor.withOpacity(0.15),
              offset: Offset(0, 3),
              blurRadius: 10)
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FlatButton(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            onPressed: () {
              Navigator.pushNamed(context, '/wishList');
            },
            child: Column(
              children: <Widget>[
                Icon(Icons.favorite),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Wish List',
                  style: TextStyle(fontSize: 15.0),
                )
              ],
            ),
          ),
          FlatButton(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            onPressed: () {
              Navigator.of(context).pushNamed('/coupons');
            },
            child: Column(
              children: <Widget>[
                Icon(Icons.card_giftcard),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Coupons',
                  style: TextStyle(fontSize: 15.0),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
