import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, '/homePage');
                    },
                    child: _currentPage != _numPages - 1
                        ? Text(
                            'Skip',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Color.fromRGBO(191, 33, 49, 1),
                            ),
                          )
                        : null,
                  ),
                ),
                _buildMain(context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                _showBtn(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 20.0),
      height: isActive ? 12.0 : 10.0,
      width: isActive ? 12.0 : 10.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.black54 : Colors.grey[400],
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
    );
  }

  _showBtn() {
    _currentPage != _numPages - 1
        ? GestureDetector(
            onTap: () {
              _pageController.nextPage(
                  duration: Duration(milliseconds: 500), curve: Curves.ease);
            },
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height / 17,
              width: MediaQuery.of(context).size.width / 2.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                color: Color.fromRGBO(255, 174, 0, 1),
              ),
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromRGBO(8, 8, 8, 1),
                ),
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              Navigator.popAndPushNamed(context, '/homePage');
            },
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height / 17,
              width: MediaQuery.of(context).size.width / 2.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                color: Color.fromRGBO(255, 174, 0, 1),
              ),
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromRGBO(8, 8, 8, 1),
                ),
              ),
            ),
          );
  }

  Container _buildMain(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
      // color: Colors.red,
      child: PageView(
        physics: ClampingScrollPhysics(),
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        children: <Widget>[
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 5,
                decoration: BoxDecoration(),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Discover',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(8, 8, 8, 1),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Lovely accessories you would love\nJust a click away to make them yours',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color.fromRGBO(8, 8, 8, 1),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  // height: MediaQuery.of(context).size.height / 50,
                  ),
              Container(
                width: MediaQuery.of(context).size.height / 3.3,
                height: MediaQuery.of(context).size.height / 3.3,
                decoration: BoxDecoration(
                  // borderRadius:
                  //     BorderRadius.all(Radius.circular(100.0)),
                  color: Colors.grey[400],
                  image: DecorationImage(
                    image: AssetImage('assets/images/handbag.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 5,
                decoration: BoxDecoration(),
                child: Column(
                  children: <Widget>[
                    Text(
                      'New Arrivals',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(8, 8, 8, 1),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lovely accessories you would love\nJust a click away to make them yours',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color.fromRGBO(8, 8, 8, 1),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  // height: 50.0,
                  ),
              Container(
                width: MediaQuery.of(context).size.width / 1.7,
                height: MediaQuery.of(context).size.height / 2.7,
                decoration: BoxDecoration(
                  // borderRadius:
                  //     BorderRadius.all(Radius.circular(100.0)),
                  color: Colors.grey[400],
                  image: DecorationImage(
                    image: AssetImage('assets/images/shoedleg.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 5,
                decoration: BoxDecoration(),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Explore',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(8, 8, 8, 1),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Lovely accessories you would love\nJust a click away to make them yours',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color.fromRGBO(8, 8, 8, 1),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  // height: 50.0,
                  ),
              Container(
                width: MediaQuery.of(context).size.width / 1.7,
                height: MediaQuery.of(context).size.height / 2.7,
                decoration: BoxDecoration(
                  // borderRadius:
                  //     BorderRadius.all(Radius.circular(100.0)),
                  color: Colors.grey[400],
                  image: DecorationImage(
                    image: AssetImage('assets/images/wine.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
