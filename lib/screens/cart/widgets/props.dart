import 'package:flutter/material.dart';

class CartProps {
  static Widget refreshBg() {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(right: 20.0),
      color: const Color(0xffe61d1d),
      child: Text(
        "Delete",
        style: TextStyle(color: Colors.white),
      ),
      // child: Icon(
      //   Icons.delete,
      //   color: Colors.black,
      // ),
    );
  }
}
