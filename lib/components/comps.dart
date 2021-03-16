import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

class Comps {
  static List shuffle(List items) {
    var random = new Random();
    // Go through all elements.
    for (var i = items.length - 1; i > 0; i--) {
      // Pick a pseudorandom number according to the list length
      var n = random.nextInt(i + 1);
      var temp = items[i];
      items[i] = items[n];
      items[n] = temp;
    }
    return items;
  }

  static dynamic format(var num) {
    num = NumberFormat.currency(symbol: '').format(num);
    return num;
  }

  static Widget shimmerImage() {
    return Container(
      width: double.infinity,
      // height: 300.0,
      // color: Colors.green,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Shimmer.fromColors(
                child: Container(
                  height: 120,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey,
                  ),
                ),
                baseColor: Colors.grey[200],
                highlightColor: Colors.grey[100]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Shimmer.fromColors(
                child: Container(
                  height: 120,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey,
                  ),
                ),
                baseColor: Colors.grey[200],
                highlightColor: Colors.grey[100]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Shimmer.fromColors(
                child: Container(
                  height: 120,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey,
                  ),
                ),
                baseColor: Colors.grey[200],
                highlightColor: Colors.grey[100]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Shimmer.fromColors(
                child: Container(
                  height: 120,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey,
                  ),
                ),
                baseColor: Colors.grey[200],
                highlightColor: Colors.grey[100]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Shimmer.fromColors(
                child: Container(
                  height: 120,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey,
                  ),
                ),
                baseColor: Colors.grey[200],
                highlightColor: Colors.grey[100]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Shimmer.fromColors(
                child: Container(
                  height: 120,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey,
                  ),
                ),
                baseColor: Colors.grey[200],
                highlightColor: Colors.grey[100]),
          ),
        ],
      ),
    );
  }
}
