import 'package:ShopAfrika/screens/chat/comps.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _chatController = TextEditingController();
  final List chat = [];

  @override
  void dispose() {
    _chatController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0,
        title: Center(
          child: Text(
            'CHAT',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _chatTexts(),
          _bottomContainer(context),
        ],
      ),
    );
  }

  Widget _chatTexts() {
    return Expanded(
      child: ListView.builder(
        itemCount: chat.length,
        itemBuilder: (context, index) {
          return chat.length > 0
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 305,
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 250.0,
                            // height: 70.0,
                            margin: EdgeInsets.only(
                              left: 20,
                              top: 15.0,
                              right: 0,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 13, vertical: 15.0),
                            child: Text(
                              chat[index],
                              // style: TextStyle(color: const Color(0xffe61d1d)),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                          Positioned(
                            top: 6,
                            right: 0,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              // margin: const EdgeInsets.all(0),
                              // width: 30.0,
                              child: Icon(
                                Icons.arrow_right,
                                size: 60.0,
                                color: Colors.white,
                                // color: const Color(0xffe61d1d),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(
                          right: 15,
                        ),
                        alignment: Alignment.center,
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                    ),
                  ],
                )
              : null;
        },
      ),
    );
  }

  Widget _bottomContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.0),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: const Color(0xffe61d1d),
            ),
            child: IconButton(
              onPressed: () => ChatComps.modalBottomSheetMenu(context),
              icon: Icon(
                Icons.attach_file,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              alignment: Alignment(0.5, 0.0),
              // width: MediaQuery.of(context).size.width / 1.05,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    offset: Offset(0, 3.0),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      onChanged: (text) {},
                      controller: _chatController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white60,
                        hintText: "Say something",
                        hintStyle:
                            TextStyle(color: Colors.grey[600], fontSize: 14.0),
                        suffixIcon: Container(
                          width: 70.0,
                          // alignment: Alignment.topCenter,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(55.0)),
                            // color: Colors.red,
                          ),
                          child: IconButton(
                              icon: Icon(
                                Icons.send,
                                color: Colors.green[700],
                              ),
                              onPressed: () {
                                setState(() {
                                  chat.add(_chatController.text);
                                  _chatController.clear();
                                });
                              }),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[300]),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0))),
                      ),
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
}
