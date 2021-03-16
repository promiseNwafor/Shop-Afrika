import 'package:ShopAfrika/screens/settings/profile_settings_dialog.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
            decoration: BoxDecoration(
              // color: Colors.white70,
              borderRadius: BorderRadius.circular(6),
              // boxShadow: [
              //   BoxShadow(
              //       color: Theme.of(context).hintColor.withOpacity(0.15),
              //       offset: Offset(0, 3),
              //       blurRadius: 10)
              // ],
            ),
            child: ListView(
              shrinkWrap: true,
              primary: false,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.verified_user),
                  title: Text(
                    'Profile Settings',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
                  ),
                  trailing: ButtonTheme(
                    padding: EdgeInsets.all(0),
                    minWidth: 50.0,
                    height: 25.0,
                    child: ProfileSettingsDialog(),
                  ),
                ),
                _settingsProps(context, 'Name', ''),
                _settingsProps(context, 'Email', ''),
                _settingsProps(context, 'Gender', ''),
                _settingsProps(context, 'Phone', ''),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
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
                        _settingsProps(context, 'Shipping Address', ''),
                        _settingsProps(context, 'Language', 'English'),
                        _settingsProps(context, 'Help & Support', ''),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 30,
                        ),
                        _logoutProp(context),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 7,
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ])));
  }

  Widget _appBar() {
    return AppBar(
      // automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.grey[300],
      title: Padding(
        padding: EdgeInsets.only(
          right: 10.0,
        ),
        child: Text(
          'User',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20.0,
            color: Colors.grey[900],
          ),
        ),
      ),
    );
  }

  Widget _logoutProp(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              'Are you sure you want to logout?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    width: 60.0,
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Text(
                      'Yes',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pop(context);
                  },
                  child: Container(
                    width: 60.0,
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.grey[300],
                    ),
                    child: Text(
                      'No',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      child: Container(
        width: 200,
        margin: EdgeInsets.only(bottom: 10.0, top: 10.0),
        decoration: BoxDecoration(
          color: Colors.red[700],
          borderRadius: BorderRadius.all(Radius.circular(35.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 40.0,
                alignment: Alignment.center,
                // padding: EdgeInsets.only(left: 10.0, top: 10.0),
                child: Text(
                  'LOGOUT',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
            // Icon(Icons.arrow_right_rounded),
          ],
        ),
      ),
    );
  }

  Widget _settingsProps(BuildContext context, String title, String subtext) {
    return ListTile(
      onTap: () {},
      dense: true,
      title: Text(
        title,
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
      trailing: Text(
        subtext,
        style: TextStyle(color: Theme.of(context).focusColor),
      ),
    );
  }
}
