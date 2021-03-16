import 'package:ShopAfrika/screens/account/account_screen.dart';
import 'package:ShopAfrika/screens/cart/cart_screen.dart';
import 'package:ShopAfrika/screens/home/home_screen.dart';
import 'package:ShopAfrika/screens/messages/message_screen.dart';
import 'package:flutter/material.dart';

class Root extends StatefulWidget {
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  int _selectedIndex = 0;
  List<Widget> pages;
  Widget _currentPage;
  HomeScreen _homeScreen;
  MessageScreen _messageScreen;
  CartScreen _cartScreen;
  AccountScreen _accountScreen;

  @override
  void initState() {
    super.initState();
    _currentPage = _homeScreen;
    _homeScreen = HomeScreen();
    _messageScreen = MessageScreen();
    _cartScreen = CartScreen();
    _accountScreen = AccountScreen();
    pages = [_homeScreen, _messageScreen, _cartScreen, _accountScreen];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 0 ? _appBar() : null,
      body: _currentPage,
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Widget _appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Container(
        alignment: Alignment.center,
        height: 40.0,
        width: MediaQuery.of(context).size.width,
        child: Form(
          child: TextFormField(
            onChanged: (String value) {},
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              contentPadding: EdgeInsets.only(top: 0.0, left: 10.0),
              fillColor: Colors.grey[300],
              hintText: "Shoes",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0),
              suffixIcon: Container(
                width: MediaQuery.of(context).size.width / 7,
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  color: const Color(0xffe61d1d),
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
      ),
      elevation: 0,
      backgroundColor: const Color(0xffffed00),
    );
  }

  Widget _bottomNavBar() {
    return BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            _currentPage = pages[index];
          });
        },
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.grey[100],
        selectedItemColor: Colors.grey[900],
        selectedIconTheme: IconThemeData(size: 20),
        selectedFontSize: 15,
        iconSize: 20,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Messages', icon: Icon(Icons.message)),
          BottomNavigationBarItem(
              label: 'Cart', icon: Icon(Icons.shopping_cart)),
          BottomNavigationBarItem(label: 'Account', icon: Icon(Icons.person)),
        ]);
  }
}
