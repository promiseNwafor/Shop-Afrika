import 'package:flutter/material.dart';

class ChatComps {
  static void modalBottomSheetMenu(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return new Container(
            height: 70.0,
            color: Colors.transparent, //could change this to Color(0xFF737373),
            //so you don't have to change MaterialApp canvasColor
            child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.red[700],
                  // borderRadius: new BorderRadius.only(
                  //     topLeft: const Radius.circular(10.0),
                  //     topRight: const Radius.circular(10.0))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.camera_enhance,
                              color: Colors.white,
                            ),
                            onPressed: () {}),
                        Text(
                          'CAMERA',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.photo_album,
                              color: Colors.white,
                            ),
                            onPressed: () {}),
                        Text('PHOTO',
                            style: TextStyle(fontSize: 10, color: Colors.white))
                      ],
                    ),
                  ],
                )),
          );
        });
  }
}
