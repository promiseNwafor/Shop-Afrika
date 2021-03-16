import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 40.0, right: 30.0),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  loginForm(context),
                  SizedBox(height: MediaQuery.of(context).size.height / 10),
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height / 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 45.0,
                                  width: 180.0,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(2.5)),
                                    color: const Color(0xffe61d1d),
                                  ),
                                  child: FlatButton(
                                    child: Text(
                                      'LOGIN',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Forgot your password? ",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey[700]),
                                  ),
                                  GestureDetector(
                                    child: Text(
                                      "Click here",
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.blue[400]),
                                    ),
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, '/forgotPassword');
                                    },
                                  ),
                                ],
                              ),
                              Container(
                                height: 40.0,
                                // width: 150.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[250],
                                  border: Border.all(
                                    color: Colors.blue[300],
                                    width: 2.0,
                                  ),
                                ),
                                child: FlatButton(
                                  child: Text(
                                    'SKIP LOGIN',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.blue[300]),
                                  ),
                                  onPressed: () {
                                    Navigator.popAndPushNamed(
                                        context, '/homePage');
                                    //   Navigator.push(context, new MaterialPageRoute(
                                    //   builder: (context) => GetStarted()
                                    // ));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget loginForm(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.green,
                    width: 2.0,
                  ),
                ),
              ),
              child: TextFormField(
                validator: (input) =>
                    input.isEmpty ? 'Enter email address' : null,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "EMAIL",
                  hintStyle: TextStyle(color: Colors.grey[600], fontSize: 13.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.green,
                    width: 2.0,
                  ),
                ),
              ),
              child: TextFormField(
                validator: (input) => input.isEmpty ? 'Enter password' : null,
                decoration: InputDecoration(
                  hintText: "PASSWORD",
                  hintStyle: TextStyle(color: Colors.grey[600], fontSize: 13.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
