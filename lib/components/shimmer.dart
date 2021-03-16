import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
