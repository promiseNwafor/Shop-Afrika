import 'package:ShopAfrika/screens/register-login/login.dart';
import 'package:ShopAfrika/screens/register-login/register.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.grey[800],
          ),
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.grey[50],
          bottom: TabBar(
              indicatorPadding: EdgeInsets.all(10),
              labelPadding: EdgeInsets.symmetric(horizontal: 0),
              unselectedLabelColor: const Color(0xffe61d1d),
              labelColor: Colors.white,
              isScrollable: true,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: const Color(0xffe61d1d)),
                  color: const Color(0xffe61d1d)),
              tabs: [
                Tab(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: const Color(0xffe61d1d), width: 2)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Register"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: const Color(0xffe61d1d), width: 2)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Login"),
                    ),
                  ),
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            RegisterScreen(),
            LoginScreen(),
          ],
        ),
      ),
    );
  }
}
